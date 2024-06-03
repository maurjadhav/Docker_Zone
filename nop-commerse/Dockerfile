# dotnet build and published
FROM mcr.microsoft.com/dotnet/sdk:8.0-alpine AS build
RUN git clone https://github.com/maurjadhav/nopCommerce-jenkins.git
RUN mkdir published
RUN cd nopCommerce-jenkins
RUN dotnet publish -c Release -o published/ nopCommerce-jenkins/src/Presentation/Nop.Web/Nop.Web.csproj

# deploying
FROM mcr.microsoft.com/dotnet/sdk:8.0
RUN mkdir /nopCommerce && chown nobody /nopCommerce
USER nobody
WORKDIR /nopCommerce
COPY --from=build --chown=nobody:nobody published/ /nopCommerce
RUN cd /nopCommerce && mkdir logs && mkdir bin
EXPOSE 5000
CMD [ "dotnet", "Nop.Web.dll", "--urls", "http://0.0.0.0:5000" ]