.class public Lb/b/k/h$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/s/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/b/k/h;->initDelegate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/b/k/h;


# direct methods
.method public constructor <init>(Lb/b/k/h;)V
    .locals 0

    iput-object p1, p0, Lb/b/k/h$a;->a:Lb/b/k/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lb/b/k/h$a;->a:Lb/b/k/h;

    invoke-virtual {v1}, Lb/b/k/h;->getDelegate()Lb/b/k/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lb/b/k/j;->q(Landroid/os/Bundle;)V

    return-object v0
.end method
