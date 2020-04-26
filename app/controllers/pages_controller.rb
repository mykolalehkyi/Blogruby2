class PagesController < ApplicationController
    def about
        @heading = 'Сторінка про нас!'
        @text = 'Трохи тексту'
    end
end
