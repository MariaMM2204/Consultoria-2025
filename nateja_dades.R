nateja <- function(dataset) {
  dataset %>%
    bind_rows(.) %>%
    mutate(
      premio_num = as.numeric(premio),
      premio_factor = factor(
        format(premio_num, scientific = FALSE, trim = TRUE)
      ),
      categoria = str_trim(categoria),
      categoria = str_to_lower(categoria),
      categoria = recode(
        categoria, 
        # errores de codificación
        "veinti n mil"   = "veintiún mil",
        "veintitr s mil" = "veintitrés mil",
        "veintid s mil"  = "veintidós mil",
        "diecis is mil"  = "dieciséis mil",
        "veintis is mil" = "veintiséis mil",
        "tr e s m i l"   = "tres mil",
        
        # variantes sin tilde
        "veintidos mil"  = "veintidós mil",
        "veintitres mil" = "veintitrés mil",
        "veintiseis mil" = "veintiséis mil"
      ),
      categoria = factor(str_to_sentence(categoria))
      )
}
