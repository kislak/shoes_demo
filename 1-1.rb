Shoes.app height: 200, width: 200 do
  background lightblue
  stack margin: 10 do
    caption strong "cap"
    flow do
      button 'start' do
        @time = Time.now
        @label.replace "started at #{time.strftime '%l:%M:%S %p'}"
      end
      
      button 'stop' do
        @time = Time.now
        @label.replace "stopped, ", strong("#{Time.now - @time}"), " seconds elapsed."
      end
    end
    @label = para "Press ", strong("start"), " to begin timing."
  end
end      
