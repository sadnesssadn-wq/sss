.class public final Lcom/google/android/libraries/places/internal/zzad;
.super Lc/a/b/q/h;
.source ""


# instance fields
.field public final synthetic zza:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzae;ILjava/lang/String;Lorg/json/JSONObject;Lc/a/b/l$b;Lc/a/b/l$a;Ljava/util/Map;)V
    .locals 6

    iput-object p7, p0, Lcom/google/android/libraries/places/internal/zzad;->zza:Ljava/util/Map;

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lc/a/b/q/h;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lc/a/b/l$b;Lc/a/b/l$a;)V

    return-void
.end method


# virtual methods
.method public final getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzad;->zza:Ljava/util/Map;

    return-object v0
.end method
