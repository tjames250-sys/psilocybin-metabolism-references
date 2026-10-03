# Run before committing a website update: ./update-site-timestamp.ps1
$ErrorActionPreference = 'Stop'
$zone = try { [TimeZoneInfo]::FindSystemTimeZoneById('America/Los_Angeles') } catch { [TimeZoneInfo]::FindSystemTimeZoneById('Pacific Standard Time') }
$updated = [TimeZoneInfo]::ConvertTime([DateTimeOffset]::UtcNow, $zone)
$display = $updated.ToString('MM/dd/yy - HH:mm', [Globalization.CultureInfo]::InvariantCulture)
$iso = $updated.ToString('yyyy-MM-ddTHH:mm:sszzz', [Globalization.CultureInfo]::InvariantCulture)
$markup = '<p class="site-updated" style="font-size: 0.8rem; margin: 1rem 0 0;" title="Most recent website update; archived documents retain their original version dates.">Updated: <time datetime="' + $iso + '">' + $display + '</time> PT</p>'
$pages = git -C $PSScriptRoot ls-files '*.html'
if ($LASTEXITCODE -ne 0) { throw 'Could not list website pages.' }
foreach ($page in $pages) {
    $path = Join-Path $PSScriptRoot $page
    $html = [IO.File]::ReadAllText($path)
    $newline = if ($html.Contains("`r`n")) { "`r`n" } else { "`n" }
    if ($html -notmatch '</footer>') {
        if ($html -notmatch '</body>') { throw "Missing body: $page" }
        $html = $html.Replace('</body>', '<footer style="text-align: center; padding: 1rem;">' + $newline + '</footer>' + $newline + '</body>')
    }
    if ($html -match '<p class="site-updated"') {
        $html = [regex]::Replace($html, '<p class="site-updated"[^>]*>.*?</p>', $markup)
    } else {
        $newline = if ($html.Contains("`r`n")) { "`r`n" } else { "`n" }
        $html = $html.Replace('</footer>', $markup + $newline + '</footer>')
    }
    [IO.File]::WriteAllText($path, $html, [Text.UTF8Encoding]::new($false))
}
Write-Output "Updated $($pages.Count) page footers to $display PT."
