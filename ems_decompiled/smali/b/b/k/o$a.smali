.class public Lb/b/k/o$a;
.super Lb/i/m/a0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/b/k/o;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/b/k/o;


# direct methods
.method public constructor <init>(Lb/b/k/o;)V
    .locals 0

    iput-object p1, p0, Lb/b/k/o$a;->a:Lb/b/k/o;

    invoke-direct {p0}, Lb/i/m/a0;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lb/b/k/o$a;->a:Lb/b/k/o;

    iget-object p1, p1, Lb/b/k/o;->c:Lb/b/k/k;

    iget-object p1, p1, Lb/b/k/k;->q:Landroidx/appcompat/widget/ActionBarContextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object p1, p0, Lb/b/k/o$a;->a:Lb/b/k/o;

    iget-object p1, p1, Lb/b/k/o;->c:Lb/b/k/k;

    iget-object p1, p1, Lb/b/k/k;->t:Lb/i/m/y;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lb/i/m/y;->d(Lb/i/m/z;)Lb/i/m/y;

    iget-object p1, p0, Lb/b/k/o$a;->a:Lb/b/k/o;

    iget-object p1, p1, Lb/b/k/o;->c:Lb/b/k/k;

    iput-object v0, p1, Lb/b/k/k;->t:Lb/i/m/y;

    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lb/b/k/o$a;->a:Lb/b/k/o;

    iget-object p1, p1, Lb/b/k/o;->c:Lb/b/k/k;

    iget-object p1, p1, Lb/b/k/k;->q:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    return-void
.end method
