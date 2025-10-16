.class public Lc/b/i/a$b;
.super Lcom/emsportal/base/BaseAdapter$BaseViewHolder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/i/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/widget/ImageView;

.field public b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lc/b/i/a;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/emsportal/base/BaseAdapter$BaseViewHolder;-><init>(Lcom/emsportal/base/BaseAdapter;Landroid/view/View;)V

    const p1, 0x7f0804ce

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lc/b/i/a$b;->b:Landroid/widget/TextView;

    const p1, 0x7f08015b

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lc/b/i/a$b;->a:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;I)V
    .locals 1

    check-cast p1, Lcom/emsportal/model/ObjActionHome;

    iget-object p2, p0, Lc/b/i/a$b;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/emsportal/model/ObjActionHome;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lc/b/i/a$b;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/emsportal/model/ObjActionHome;->b()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
