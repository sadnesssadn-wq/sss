.class public final Lcom/google/android/libraries/places/internal/zzbq;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zza:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lc/d/c/e;

    invoke-direct {v0}, Lc/d/c/e;-><init>()V

    sget-object v1, Lc/d/c/c;->f:Lc/d/c/c;

    .line 1
    iput-object v1, v0, Lc/d/c/e;->c:Lc/d/c/d;

    .line 2
    invoke-virtual {v0}, Lc/d/c/e;->a()Lcom/google/gson/Gson;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbq;->zza:Lcom/google/gson/Gson;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbq;->zza:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/Gson;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lc/d/c/r; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p1, Lcom/google/android/libraries/places/internal/zzao;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x37

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Could not convert JSON string to "

    const-string v2, " due to syntax errors."

    invoke-static {v1, v0, p2, v2}, Lc/a/a/a/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/libraries/places/internal/zzao;-><init>(Ljava/lang/String;)V

    throw p1
.end method
