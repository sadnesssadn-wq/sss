.class public Lc/b/i/d$a;
.super Lcom/emsportal/base/BaseAdapter$BaseViewHolder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/i/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Lc/b/i/d;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/emsportal/base/BaseAdapter$BaseViewHolder;-><init>(Lcom/emsportal/base/BaseAdapter;Landroid/view/View;)V

    const v0, 0x7f080486

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc/b/i/d$a;->a:Landroid/widget/TextView;

    const v0, 0x7f08022a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lc/b/i/d$a;->b:Landroid/widget/FrameLayout;

    new-instance v0, Lc/b/i/d$a$a;

    invoke-direct {v0, p0, p1}, Lc/b/i/d$a$a;-><init>(Lc/b/i/d$a;Lc/b/i/d;)V

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;I)V
    .locals 1

    check-cast p1, Lc/b/m/d/n;

    iget-object v0, p0, Lc/b/i/d$a;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lc/b/m/d/n;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p2, :cond_0

    iget-object p1, p0, Lc/b/i/d$a;->b:Landroid/widget/FrameLayout;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setSelected(Z)V

    :cond_0
    return-void
.end method
