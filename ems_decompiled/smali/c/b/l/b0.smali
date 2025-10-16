.class public Lc/b/l/b0;
.super Lc/d/a/c/s/e;
.source ""


# static fields
.field public static final j:Ljava/lang/String;


# instance fields
.field public c:Landroid/view/View;

.field public d:Landroid/widget/ImageView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/TextView;

.field public h:Lc/b/q/d/e;

.field public i:Lc/b/p/e/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lc/b/l/b0;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc/b/l/b0;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc/d/a/c/s/e;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lb/m/d/l;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "MODEL"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lc/b/q/d/e;

    iput-object v0, p0, Lc/b/l/b0;->h:Lc/b/q/d/e;

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "KEY_DATA_DRIVER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lc/b/p/e/d;

    iput-object p1, p0, Lc/b/l/b0;->i:Lc/b/p/e/d;

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0b00a8

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lc/b/l/b0;->c:Landroid/view/View;

    const p2, 0x7f08016e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lc/b/l/b0;->d:Landroid/widget/ImageView;

    iget-object p1, p0, Lc/b/l/b0;->c:Landroid/view/View;

    const p2, 0x7f080490

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lc/b/l/b0;->e:Landroid/widget/TextView;

    iget-object p1, p0, Lc/b/l/b0;->c:Landroid/view/View;

    const p2, 0x7f0804a7

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lc/b/l/b0;->f:Landroid/widget/TextView;

    iget-object p1, p0, Lc/b/l/b0;->c:Landroid/view/View;

    const p2, 0x7f0804ee

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lc/b/l/b0;->g:Landroid/widget/TextView;

    iget-object p2, p0, Lc/b/l/b0;->h:Lc/b/q/d/e;

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p2}, Lc/b/q/d/e;->F()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lc/b/l/b0;->e:Landroid/widget/TextView;

    invoke-virtual {p2}, Lc/b/q/d/e;->n()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lc/b/l/b0;->f:Landroid/widget/TextView;

    invoke-virtual {p2}, Lc/b/q/d/e;->p()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lc/b/l/b0;->d:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lc/b/q/d/e;->l()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lc/b/w/o;->b(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 2
    :goto_0
    iget-object p1, p0, Lc/b/l/b0;->i:Lc/b/p/e/d;

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Lc/b/p/e/d;->c()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lc/b/l/b0;->i:Lc/b/p/e/d;

    invoke-virtual {p2}, Lc/b/p/e/d;->f()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lc/b/l/b0;->i:Lc/b/p/e/d;

    invoke-virtual {p3}, Lc/b/p/e/d;->b()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lc/b/l/b0;->i:Lc/b/p/e/d;

    invoke-virtual {v0}, Lc/b/p/e/d;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lc/b/l/b0;->i:Lc/b/p/e/d;

    invoke-virtual {v0}, Lc/b/p/e/d;->a()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lc/b/l/b0;->g:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lc/b/l/b0;->e:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lc/b/l/b0;->f:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lc/b/l/b0;->d:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lc/b/w/o;->b(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 4
    :cond_2
    iget-object p1, p0, Lc/b/l/b0;->c:Landroid/view/View;

    return-object p1
.end method
