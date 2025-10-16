.class public Lc/b/i/j$a;
.super Lcom/emsportal/base/BaseAdapter$BaseViewHolder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/i/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lc/b/i/j;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/emsportal/base/BaseAdapter$BaseViewHolder;-><init>(Lcom/emsportal/base/BaseAdapter;Landroid/view/View;)V

    const p1, 0x7f08048e

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lc/b/i/j$a;->a:Landroid/widget/TextView;

    const p1, 0x7f080161

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lc/b/i/j$a;->b:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;I)V
    .locals 3

    instance-of p2, p1, Lcom/emsportal/model/ObjProvince;

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p2, :cond_0

    check-cast p1, Lcom/emsportal/model/ObjProvince;

    iget-object p2, p0, Lc/b/i/j$a;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/emsportal/model/ObjProvince;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/emsportal/model/ObjProvince;->f()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_0
    instance-of p2, p1, Lcom/emsportal/model/ObjDistrict;

    if-eqz p2, :cond_1

    check-cast p1, Lcom/emsportal/model/ObjDistrict;

    iget-object p2, p0, Lc/b/i/j$a;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/emsportal/model/ObjDistrict;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/emsportal/model/ObjDistrict;->f()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_1
    instance-of p2, p1, Lcom/emsportal/model/ObjWard;

    if-eqz p2, :cond_2

    check-cast p1, Lcom/emsportal/model/ObjWard;

    iget-object p2, p0, Lc/b/i/j$a;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/emsportal/model/ObjWard;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/emsportal/model/ObjWard;->f()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_2
    instance-of p2, p1, Lcom/emsportal/model/Postal;

    if-eqz p2, :cond_4

    check-cast p1, Lcom/emsportal/model/Postal;

    iget-object p2, p0, Lc/b/i/j$a;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/emsportal/model/Postal;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/emsportal/model/Postal;->c()Z

    move-result p1

    if-eqz p1, :cond_3

    :goto_0
    iget-object p1, p0, Lc/b/i/j$a;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lc/b/i/j$a;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void
.end method
