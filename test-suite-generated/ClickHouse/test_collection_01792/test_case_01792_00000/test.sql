select finalizeAggregation(uniqThetaIntersect(uv2021,uv2022))/finalizeAggregation(uv2021),finalizeAggregation(uniqThetaIntersect(uv2021,uv2022)),finalizeAggregation(uv2021)
from
(
select uniqThetaStateIf(uv,year='2021') as uv2021, uniqThetaStateIf(uv,year='2022') as uv2022 
from test2
);
