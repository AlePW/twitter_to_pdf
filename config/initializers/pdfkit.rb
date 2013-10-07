require "pdfkit"

PDFKit.configure do |config|
  config.wkhtmltopdf = File.join(ENV["HOME"], "bin", "wkhtmltopdf-amd64")

  config.default_options = {
    page_size: "A4"
    # margin_top: "0.50in", margin_right: "0.25in",
    # margin_bottom: "0.50in", margin_left: "0.25in"
    # footer_center: "[page] / [topage]",
    # header_spacing: 6,
    # header_font_size: 8,
    # footer_spacing: 5,
    # footer_font_size: 8,
  }
end
