.class public Lc/b/m/a/b/d/b/b$a;
.super Lcom/emsportal/base/BaseAdapter$BaseViewHolder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/m/a/b/d/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lc/b/m/a/b/d/b/b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/emsportal/base/BaseAdapter$BaseViewHolder;-><init>(Lcom/emsportal/base/BaseAdapter;Landroid/view/View;)V

    const p1, 0x7f08022a

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const p1, 0x7f080469

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lc/b/m/a/b/d/b/b$a;->c:Landroid/widget/TextView;

    const p1, 0x7f0804dc

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lc/b/m/a/b/d/b/b$a;->a:Landroid/widget/TextView;

    const p1, 0x7f0804da

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lc/b/m/a/b/d/b/b$a;->b:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;I)V
    .locals 2

    check-cast p1, Lc/b/m/d/a;

    invoke-virtual {p1}, Lc/b/m/d/a;->a()Ljava/lang/String;

    move-result-object p2

    const-string v0, "dd/MM/yyyy"

    const-string v1, "dd-MM-yyyy"

    invoke-static {p2, v0, v1}, Lb/u/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lc/b/m/d/a;->c()I

    move-result v0

    invoke-virtual {p1}, Lc/b/m/d/a;->b()I

    move-result p1

    iget-object v1, p0, Lc/b/m/a/b/d/b/b$a;->c:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lc/b/m/a/b/d/b/b$a;->a:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lc/b/m/a/b/d/b/b$a;->b:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lb/u/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
