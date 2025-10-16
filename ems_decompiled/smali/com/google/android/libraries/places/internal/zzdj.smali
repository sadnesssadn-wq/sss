.class public final Lcom/google/android/libraries/places/internal/zzdj;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zza:Lc/d/a/a/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/a/f<",
            "Lcom/google/android/libraries/places/internal/zzjr;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lc/d/a/a/j/n;->c(Landroid/content/Context;)V

    invoke-static {}, Lc/d/a/a/j/n;->a()Lc/d/a/a/j/n;

    move-result-object v5

    .line 1
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-static {p1}, Lc/d/a/a/j/n;->b(Lc/d/a/a/j/e;)Ljava/util/Set;

    move-result-object p1

    invoke-static {}, Lc/d/a/a/j/j;->a()Lc/d/a/a/j/j$a;

    move-result-object v0

    const-string v1, "cct"

    invoke-virtual {v0, v1}, Lc/d/a/a/j/j$a;->b(Ljava/lang/String;)Lc/d/a/a/j/j$a;

    invoke-virtual {v0}, Lc/d/a/a/j/j$a;->a()Lc/d/a/a/j/j;

    move-result-object v1

    .line 2
    sget-object v4, Lcom/google/android/libraries/places/internal/zzdi;->zza:Lcom/google/android/libraries/places/internal/zzdi;

    .line 3
    new-instance v3, Lc/d/a/a/b;

    const-string v0, "proto"

    invoke-direct {v3, v0}, Lc/d/a/a/b;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lc/d/a/a/j/l;

    const-string v2, "LE"

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lc/d/a/a/j/l;-><init>(Lc/d/a/a/j/j;Ljava/lang/String;Lc/d/a/a/b;Lc/d/a/a/e;Lc/d/a/a/j/m;)V

    .line 5
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzdj;->zza:Lc/d/a/a/f;

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "%s is not supported byt this factory. Supported encodings are: %s."

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/libraries/places/internal/zzjr;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzdj;->zza:Lc/d/a/a/f;

    .line 1
    new-instance v1, Lc/d/a/a/a;

    sget-object v2, Lc/d/a/a/d;->c:Lc/d/a/a/d;

    const/4 v3, 0x0

    invoke-direct {v1, v3, p1, v2}, Lc/d/a/a/a;-><init>(Ljava/lang/Integer;Ljava/lang/Object;Lc/d/a/a/d;)V

    .line 2
    check-cast v0, Lc/d/a/a/j/l;

    invoke-virtual {v0, v1}, Lc/d/a/a/j/l;->a(Lc/d/a/a/c;)V

    return-void
.end method
