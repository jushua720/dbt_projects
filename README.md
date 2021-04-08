# dbt_projects

## Использованный датасет 
[Google Public Dataset Historical Air Quality](https://console.cloud.google.com/marketplace/product/epa/historical-air-quality) <br/>
Таблицы: pm10_daily_summary и pm25_frm_daily_summary <br/><br/>
Исходные данные:

| Данные   |      Описание      | 
|:----------|:-------------|
| state_code |  код штата, в котором производится мониторинг | 
| state_name |    название штата   |
| city_name | название города, для которого предоставлены измерения | 
| parameter_name | параметр (pm10 или pm25) | 
| latitude | широта точки, в которой производились измерения | 
| longitude | долгота | 
| date_local  | дата измерения | 
| units_of_measure | единицы измерения | 
| aqi | индекс качества воздуха, на основании которого составлена следующая шкала качества: Хороший(Good), Умеренный(Moderate), Нездоровый(Unhealthy), Плохой(Poor), Очень плохой (Very poor), Опасный (Hazardous), Вредный (Hazardous)
 

## Цель
предоставить данные о состоянии воздуха в штатах западного побережья США (Калифорния, Орегон, Вашингтон) на основании показателей pm2.5 и pm10

## Схема данных
<a href="https://drive.google.com/uc?export=view&id=1p16l_-XBjn2rJj-qY0ODJE_6WU6K9jtB"><img src="https://drive.google.com/uc?export=view&id=1p16l_-XBjn2rJj-qY0ODJE_6WU6K9jtB" style="width: 650px; max-width: 100%; height: auto" title="Click to enlarge picture" />

 
