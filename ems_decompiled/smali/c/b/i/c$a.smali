.class public Lc/b/i/c$a;
.super Lcom/emsportal/base/BaseAdapter$BaseViewHolder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/i/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/RadioButton;

.field public final synthetic c:Lc/b/i/c;


# direct methods
.method public constructor <init>(Lc/b/i/c;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lc/b/i/c$a;->c:Lc/b/i/c;

    invoke-direct {p0, p1, p2}, Lcom/emsportal/base/BaseAdapter$BaseViewHolder;-><init>(Lcom/emsportal/base/BaseAdapter;Landroid/view/View;)V

    const v0, 0x7f0804a0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc/b/i/c$a;->a:Landroid/widget/TextView;

    const v0, 0x7f080203

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    iput-object p2, p0, Lc/b/i/c$a;->b:Landroid/widget/RadioButton;

    new-instance v0, Lc/b/i/c$a$a;

    invoke-direct {v0, p0, p1}, Lc/b/i/c$a$a;-><init>(Lc/b/i/c$a;Lc/b/i/c;)V

    invoke-virtual {p2, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;I)V
    .locals 1

    check-cast p1, Lc/b/m/d/m;

    iget-object p2, p0, Lc/b/i/c$a;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lc/b/m/d/m;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lc/b/m/d/m;->w()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lc/b/i/c$a;->b:Landroid/widget/RadioButton;

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lc/b/i/c$a;->b:Landroid/widget/RadioButton;

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method
