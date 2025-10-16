.class public Lb/m/d/w$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/m/d/w;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lb/m/d/f0;

.field public final synthetic d:Lb/m/d/w;


# direct methods
.method public constructor <init>(Lb/m/d/w;Lb/m/d/f0;)V
    .locals 0

    iput-object p1, p0, Lb/m/d/w$a;->d:Lb/m/d/w;

    iput-object p2, p0, Lb/m/d/w$a;->c:Lb/m/d/f0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lb/m/d/w$a;->c:Lb/m/d/f0;

    .line 1
    iget-object v0, p1, Lb/m/d/f0;->c:Landroidx/fragment/app/Fragment;

    .line 2
    invoke-virtual {p1}, Lb/m/d/f0;->k()V

    iget-object p1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lb/m/d/w$a;->d:Lb/m/d/w;

    iget-object v0, v0, Lb/m/d/w;->c:Lb/m/d/y;

    invoke-static {p1, v0}, Lb/m/d/w0;->f(Landroid/view/ViewGroup;Lb/m/d/y;)Lb/m/d/w0;

    move-result-object p1

    invoke-virtual {p1}, Lb/m/d/w0;->e()V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
