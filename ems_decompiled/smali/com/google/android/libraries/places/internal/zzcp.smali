.class public final synthetic Lcom/google/android/libraries/places/internal/zzcp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lc/d/a/b/p/m;


# direct methods
.method public synthetic constructor <init>(Lc/d/a/b/p/m;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzcp;->zza:Lc/d/a/b/p/m;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzcp;->zza:Lc/d/a/b/p/m;

    new-instance v1, Lc/d/a/b/e/m/b;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    const/16 v3, 0xf

    const-string v4, "Location timeout."

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {v1, v2}, Lc/d/a/b/e/m/b;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lc/d/a/b/p/m;->a(Ljava/lang/Exception;)Z

    return-void
.end method
