.class public Lb/m/d/m$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/a/d/b;


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

    iput-object p1, p0, Lb/m/d/m$b;->a:Lb/m/d/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    iget-object p1, p0, Lb/m/d/m$b;->a:Lb/m/d/m;

    iget-object p1, p1, Lb/m/d/m;->mFragments:Lb/m/d/t;

    .line 1
    iget-object p1, p1, Lb/m/d/t;->a:Lb/m/d/v;

    iget-object v0, p1, Lb/m/d/v;->f:Lb/m/d/y;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p1, v1}, Lb/m/d/y;->b(Lb/m/d/v;Lb/m/d/s;Landroidx/fragment/app/Fragment;)V

    .line 2
    iget-object p1, p0, Lb/m/d/m$b;->a:Lb/m/d/m;

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getSavedStateRegistry()Lb/s/b;

    move-result-object p1

    const-string v0, "android:support:fragments"

    invoke-virtual {p1, v0}, Lb/s/b;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    iget-object v0, p0, Lb/m/d/m$b;->a:Lb/m/d/m;

    iget-object v0, v0, Lb/m/d/m;->mFragments:Lb/m/d/t;

    .line 3
    iget-object v0, v0, Lb/m/d/t;->a:Lb/m/d/v;

    instance-of v1, v0, Lb/o/d0;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lb/m/d/v;->f:Lb/m/d/y;

    invoke-virtual {v0, p1}, Lb/m/d/y;->c0(Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Your FragmentHostCallback must implement ViewModelStoreOwner to call restoreSaveState(). Call restoreAllState()  if you\'re still using retainNestedNonConfig()."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
