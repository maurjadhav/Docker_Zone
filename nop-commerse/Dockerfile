# building nop application
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
LABEL author="practice"
LABEL description="Builds the nopCommerce application from source code"
LABEL project="practice-nopCommerce"
#git cloning
RUN git clone https://github.com/nopSolutions/nopCommerce.git
RUN cd nopCommerce
RUN mkdir published
RUN dotnet publish  -c Release -o published/ nopCommerce/src/Presentation/Nop.Web/Nop.Web.csproj

#building image for the container to run
FROM mcr.microsoft.com/dotnet/aspnet:8.0
LABEL author="practice"
LABEL description="Runs the nopCommerce application"
LABEL project="practice-nopCommerce"
# creating user and hom dir
RUN useradd -d /app -m -s /bin/bash nop
USER nop
WORKDIR /nop
COPY --from=build --chown=nop:nop published/ /nop
RUN cd /nop && mkdir logs && mkdir bin
EXPOSE 5000
CMD [ "dotnet", "Nop.Web.dll", "--urls", "http://0.0.0.0:5000" ]