.class public Lb/i/m/c0$e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/i/m/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final a:Lb/i/m/c0;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lb/i/m/c0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/i/m/c0;-><init>(Lb/i/m/c0;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lb/i/m/c0$e;->a:Lb/i/m/c0;

    return-void
.end method

.method public constructor <init>(Lb/i/m/c0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/i/m/c0$e;->a:Lb/i/m/c0;

    return-void
.end method


# virtual methods
.method public a()Lb/i/m/c0;
    .locals 1

    iget-object v0, p0, Lb/i/m/c0$e;->a:Lb/i/m/c0;

    return-object v0
.end method

.method public b(Lb/i/g/b;)V
    .locals 0

    return-void
.end method

.method public c(Lb/i/g/b;)V
    .locals 0

    return-void
.end method
