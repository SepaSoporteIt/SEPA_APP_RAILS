module VencimientosHelper

      # Change color conditional
  def bgcolor_condition_status(status)
    bgcolors = []

    case status
    when "Vencido"
        bgcolors << "#d83200"
    when "Vigente Sin fecha"
        bgcolors << "#1378a9"
    when "Vigente"
        bgcolors << "#aad37b"
    when "Pendiente"
        bgcolors << "#90a4ae"
    when "Antiguo"
        bgcolors << "#eaeef0"
    when "A vencer"
        bgcolors << "#ffea00"
        

    end

    
    return bgcolors.join(" ")
  end

  def txtcolor_condition_status(status)
    txtcolor = []
    case status
    when "Vencido"
        txtcolor << "color:#ebebeb"
    when "Vigente Sin fecha"
        txtcolor << "color:#ebebeb"
    when "Vigente"
        txtcolor << "color:#000000"
    when "Pendiente"
        txtcolor << "color:#000000"
    when "Antiguo"
        txtcolor << "color:#000000"
    when "A vencer"
        txtcolor << "color:#000000"
    end

    
    return txtcolor.join(" ")
  end


end