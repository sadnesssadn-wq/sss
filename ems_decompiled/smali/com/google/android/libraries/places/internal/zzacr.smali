.class public final Lcom/google/android/libraries/places/internal/zzacr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzadl;


# static fields
.field private static final zza:Lcom/google/android/libraries/places/internal/zzacx;


# instance fields
.field private final zzb:Lcom/google/android/libraries/places/internal/zzacx;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzacp;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzacp;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzacr;->zza:Lcom/google/android/libraries/places/internal/zzacx;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    new-instance v0, Lcom/google/android/libraries/places/internal/zzacq;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/libraries/places/internal/zzacx;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzabo;->zza()Lcom/google/android/libraries/places/internal/zzabo;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    :try_start_0
    const-string v2, "com.google.protobuf.DescriptorMessageInfoFactory"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "getInstance"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/places/internal/zzacx;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v2, Lcom/google/android/libraries/places/internal/zzacr;->zza:Lcom/google/android/libraries/places/internal/zzacx;

    :goto_0
    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/zzacq;-><init>([Lcom/google/android/libraries/places/internal/zzacx;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "messageInfoFactory"

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzaca;->zzf(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzacr;->zzb:Lcom/google/android/libraries/places/internal/zzacx;

    return-void
.end method

.method private static zzb(Lcom/google/android/libraries/places/internal/zzacw;)Z
    .locals 1

    invoke-interface {p0}, Lcom/google/android/libraries/places/internal/zzacw;->zzc()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final zza(Ljava/lang/Class;)Lcom/google/android/libraries/places/internal/zzadk;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/android/libraries/places/internal/zzadk<",
            "TT;>;"
        }
    .end annotation

    const-class v0, Lcom/google/android/libraries/places/internal/zzabs;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzadm;->zzE(Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzacr;->zzb:Lcom/google/android/libraries/places/internal/zzacx;

    invoke-interface {v1, p1}, Lcom/google/android/libraries/places/internal/zzacx;->zzb(Ljava/lang/Class;)Lcom/google/android/libraries/places/internal/zzacw;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/libraries/places/internal/zzacw;->zzb()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzadm;->zzB()Lcom/google/android/libraries/places/internal/zzaeb;

    move-result-object p1

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzabk;->zzb()Lcom/google/android/libraries/places/internal/zzabi;

    move-result-object v0

    :goto_0
    invoke-interface {v3}, Lcom/google/android/libraries/places/internal/zzacw;->zza()Lcom/google/android/libraries/places/internal/zzacz;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzadd;->zzg(Lcom/google/android/libraries/places/internal/zzaeb;Lcom/google/android/libraries/places/internal/zzabi;Lcom/google/android/libraries/places/internal/zzacz;)Lcom/google/android/libraries/places/internal/zzadd;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzadm;->zzz()Lcom/google/android/libraries/places/internal/zzaeb;

    move-result-object p1

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzabk;->zza()Lcom/google/android/libraries/places/internal/zzabi;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v3}, Lcom/google/android/libraries/places/internal/zzacr;->zzb(Lcom/google/android/libraries/places/internal/zzacw;)Z

    move-result v0

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzadf;->zzb()Lcom/google/android/libraries/places/internal/zzade;

    move-result-object v4

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzacn;->zzd()Lcom/google/android/libraries/places/internal/zzacn;

    move-result-object v5

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzadm;->zzB()Lcom/google/android/libraries/places/internal/zzaeb;

    move-result-object v6

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzabk;->zzb()Lcom/google/android/libraries/places/internal/zzabi;

    move-result-object v7

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzacv;->zzb()Lcom/google/android/libraries/places/internal/zzacu;

    move-result-object v8

    goto :goto_3

    :cond_3
    invoke-static {v3}, Lcom/google/android/libraries/places/internal/zzacr;->zzb(Lcom/google/android/libraries/places/internal/zzacw;)Z

    move-result v0

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzadf;->zza()Lcom/google/android/libraries/places/internal/zzade;

    move-result-object v4

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzacn;->zzc()Lcom/google/android/libraries/places/internal/zzacn;

    move-result-object v5

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzadm;->zzz()Lcom/google/android/libraries/places/internal/zzaeb;

    move-result-object v6

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzabk;->zza()Lcom/google/android/libraries/places/internal/zzabi;

    move-result-object v7

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzadm;->zzA()Lcom/google/android/libraries/places/internal/zzaeb;

    move-result-object v6

    const/4 v7, 0x0

    :goto_2
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzacv;->zza()Lcom/google/android/libraries/places/internal/zzacu;

    move-result-object v8

    :goto_3
    move-object v2, p1

    invoke-static/range {v2 .. v8}, Lcom/google/android/libraries/places/internal/zzadc;->zzg(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/zzacw;Lcom/google/android/libraries/places/internal/zzade;Lcom/google/android/libraries/places/internal/zzacn;Lcom/google/android/libraries/places/internal/zzaeb;Lcom/google/android/libraries/places/internal/zzabi;Lcom/google/android/libraries/places/internal/zzacu;)Lcom/google/android/libraries/places/internal/zzadc;

    move-result-object p1

    return-object p1
.end method
