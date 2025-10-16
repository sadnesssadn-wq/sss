.class public Lc/b/m/b/p$a;
.super Lcom/emsportal/base/BaseAdapter$BaseViewHolder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/m/b/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lc/b/m/b/p;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/emsportal/base/BaseAdapter$BaseViewHolder;-><init>(Lcom/emsportal/base/BaseAdapter;Landroid/view/View;)V

    const p1, 0x7f080496

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lc/b/m/b/p$a;->a:Landroid/widget/TextView;

    const p1, 0x7f08016f

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lc/b/m/b/p$a;->b:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;I)V
    .locals 2

    instance-of p2, p1, Lc/b/m/d/f0;

    const v0, 0x7f070059

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Lc/b/m/d/f0;

    iget-object v1, p0, Lc/b/m/b/p$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lc/b/m/b/p$a;->a:Landroid/widget/TextView;

    invoke-virtual {p2}, Lc/b/m/d/f0;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    instance-of p2, p1, Lc/b/m/e/d/e;

    if-eqz p2, :cond_1

    check-cast p1, Lc/b/m/e/d/e;

    iget-object p2, p0, Lc/b/m/b/p$a;->b:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p2, p0, Lc/b/m/b/p$a;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lc/b/m/e/d/e;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
