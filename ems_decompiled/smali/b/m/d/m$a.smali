.class public Lb/m/d/m$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/s/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/m/d/m;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/m/d/m;


# direct methods
.method public constructor <init>(Lb/m/d/m;)V
    .locals 0

    iput-object p1, p0, Lb/m/d/m$a;->a:Lb/m/d/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lb/m/d/m$a;->a:Lb/m/d/m;

    invoke-virtual {v1}, Lb/m/d/m;->markFragmentsCreated()V

    iget-object v1, p0, Lb/m/d/m$a;->a:Lb/m/d/m;

    iget-object v1, v1, Lb/m/d/m;->mFragmentLifecycleRegistry:Lb/o/k;

    sget-object v2, Lb/o/f$a;->ON_STOP:Lb/o/f$a;

    invoke-virtual {v1, v2}, Lb/o/k;->e(Lb/o/f$a;)V

    iget-object v1, p0, Lb/m/d/m$a;->a:Lb/m/d/m;

    iget-object v1, v1, Lb/m/d/m;->mFragments:Lb/m/d/t;

    .line 1
    iget-object v1, v1, Lb/m/d/t;->a:Lb/m/d/v;

    iget-object v1, v1, Lb/m/d/v;->f:Lb/m/d/y;

    invoke-virtual {v1}, Lb/m/d/y;->d0()Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "android:support:fragments"

    .line 2
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-object v0
.end method
