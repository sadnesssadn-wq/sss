.class public Lb/b/q/l;
.super Lb/b/q/v;
.source ""


# instance fields
.field public final synthetic l:Landroidx/appcompat/widget/AppCompatSpinner$d;

.field public final synthetic m:Landroidx/appcompat/widget/AppCompatSpinner;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/AppCompatSpinner;Landroid/view/View;Landroidx/appcompat/widget/AppCompatSpinner$d;)V
    .locals 0

    iput-object p1, p0, Lb/b/q/l;->m:Landroidx/appcompat/widget/AppCompatSpinner;

    iput-object p3, p0, Lb/b/q/l;->l:Landroidx/appcompat/widget/AppCompatSpinner$d;

    invoke-direct {p0, p2}, Lb/b/q/v;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public b()Lb/b/p/i/p;
    .locals 1

    iget-object v0, p0, Lb/b/q/l;->l:Landroidx/appcompat/widget/AppCompatSpinner$d;

    return-object v0
.end method

.method public c()Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation

    iget-object v0, p0, Lb/b/q/l;->m:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatSpinner;->getInternalPopup()Landroidx/appcompat/widget/AppCompatSpinner$f;

    move-result-object v0

    invoke-interface {v0}, Landroidx/appcompat/widget/AppCompatSpinner$f;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/b/q/l;->m:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatSpinner;->b()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
