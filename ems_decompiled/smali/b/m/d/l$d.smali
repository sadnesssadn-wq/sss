.class public Lb/m/d/l$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/o/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/m/d/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/o/p<",
        "Lb/o/j;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lb/m/d/l;


# direct methods
.method public constructor <init>(Lb/m/d/l;)V
    .locals 0

    iput-object p1, p0, Lb/m/d/l$d;->a:Lb/m/d/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation

    check-cast p1, Lb/o/j;

    if-eqz p1, :cond_2

    .line 1
    iget-object p1, p0, Lb/m/d/l$d;->a:Lb/m/d/l;

    invoke-static {p1}, Lb/m/d/l;->access$200(Lb/m/d/l;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lb/m/d/l$d;->a:Lb/m/d/l;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lb/m/d/l$d;->a:Lb/m/d/l;

    invoke-static {v0}, Lb/m/d/l;->access$000(Lb/m/d/l;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-static {v0}, Lb/m/d/y;->P(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DialogFragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " setting the content view on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/m/d/l$d;->a:Lb/m/d/l;

    invoke-static {v1}, Lb/m/d/l;->access$000(Lb/m/d/l;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lb/m/d/l$d;->a:Lb/m/d/l;

    invoke-static {v0}, Lb/m/d/l;->access$000(Lb/m/d/l;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "DialogFragment can not be attached to a container view"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method
