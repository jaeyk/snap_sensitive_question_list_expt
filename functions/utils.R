
SN_LIGHT_GREEN <- "#00A88F"
SN_DEEP_GREEN <- "#006152"
SN_BLACK <- "#000000"
SN_DARK_BLUE <- "#2B1A78"

CFA_DARK_BLUE <- SN_DARK_BLUE
CFA_DEEP_GREEN <- SN_DEEP_GREEN
CFA_BLACK <- SN_BLACK

CFA_RICH_RED <- "#EA3C48"
CFA_LIGHT_BLUE <- "#A1B4EA"
CFA_WARM_YELLOW <- "#FFB446"
CFA_SAND <- "#E9CCBE"

# Kerry's custom theme 

custom_theme <- function(font_size = 13, width = 4, height = 6) {
  
  options(repr.plot.width = width, repr.plot.height = height)
  
  theme_bw(base_size = font_size) +
    theme(
      aspect.ratio = 1.2,
      panel.grid.major.x = element_blank(),
      panel.grid.minor.x = element_blank(),
      panel.grid.major.y = element_blank(),
      panel.grid.minor.y = element_blank(),
      axis.text.x = element_text(margin = margin(t = 6)),
      plot.title = element_text(size = 12),
      plot.subtitle = element_text(size = 10),
      plot.caption = element_text(colour = "grey50", hjust = 0)
    )
  
}

add_c4a_theme <- function(ggplot_obj, target = "fill", legend_name = "Legend") {
  
  message("The current function only has 6 color choices.")
  
  SN_LIGHT_GREEN <- "#00A88F"
  SN_DEEP_GREEN <- "#006152"
  SN_BLACK <- "#000000"
  SN_DARK_BLUE <- "#2B1A78"
  
  CFA_DARK_BLUE <- SN_DARK_BLUE
  CFA_DEEP_GREEN <- SN_DEEP_GREEN
  CFA_BLACK <- SN_BLACK
  
  CFA_RICH_RED <- "#EA3C48"
  CFA_LIGHT_BLUE <- "#A1B4EA"
  CFA_WARM_YELLOW <- "#FFB446"
  CFA_SAND <- "#E9CCBE"
  
  color_theme <- c(CFA_LIGHT_BLUE, CFA_DARK_BLUE, SN_LIGHT_GREEN, SN_DEEP_GREEN, CFA_WARM_YELLOW, CFA_RICH_RED)
  
  base <- ggplot_obj +
    theme(
      text = element_text(
        size = 12,
        family = "Helvetica Neue"
      ),
      axis.title.y = element_text(face = "bold", size = 12),
      axis.title.x = element_text(face = "bold", size = 12),
      axis.text.x = element_text(size = 10),
      plot.title = element_text(face = "bold"),
      legend.title = element_text(size = 11)
    )
  
  if (target == "fill") {
    out <- base +
      scale_fill_manual(name = legend_name, values = color_theme) # the legned is a default name. please feel free to change it.
  }
  
  if (target == "color") {
    out <- base +
      scale_color_manual(name = legend_name, values = color_theme) # the legned is a default name. please feel free to change it.
  }
  
  message(paste("cfa theme is applied to", target, "parameter.")) 
  
  return(out)
}