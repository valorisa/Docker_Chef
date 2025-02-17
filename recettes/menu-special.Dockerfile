# 🎩 Recette Michelin - Service Multi-étages

# Phase 1 : Mise en place
FROM python:3.11 as mise_en_place

WORKDIR /service

COPY amuse-bouche/ .
RUN pip install --user -r requirements.txt

# Phase 2 : Cuisson express
FROM gcr.io/distroless/python3-debian11

WORKDIR /service
COPY --from=mise_en_place /root/.local /root/.local
COPY --from=mise_en_place /service .

ENV PATH="/root/.local/bin:${PATH}"

ENTRYPOINT ["python"]
CMD ["app.py"]
