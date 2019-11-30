module ExpirationsHelper

      # Change color conditional
  def bgcolor_condition_status(status)
    bgcolors = []

    case status
    when "Vencido"
        bgcolors << "#c16054"
    when "Vigente"
        bgcolors << "#a9c897"
    when "Pendiente"
        bgcolors << "#dad099"
    when "Antiguo"
        bgcolors << "#b2b2b2"
    when "A vencer"
        bgcolors << "#b2b2b2"
        
    end

    
    return bgcolors.join(" ")
  end

  def txtcolor_condition_status(status)
    txtcolor = []
    case status
    when "Vencido"
        txtcolor << "color:#000000"
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
