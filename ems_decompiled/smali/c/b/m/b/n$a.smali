.class public Lc/b/m/b/n$a;
.super Lcom/emsportal/base/BaseAdapter$BaseViewHolder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/m/b/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public final synthetic f:Lc/b/m/b/n;


# direct methods
.method public constructor <init>(Lc/b/m/b/n;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lc/b/m/b/n$a;->f:Lc/b/m/b/n;

    invoke-direct {p0, p1, p2}, Lcom/emsportal/base/BaseAdapter$BaseViewHolder;-><init>(Lcom/emsportal/base/BaseAdapter;Landroid/view/View;)V

    const p1, 0x7f0804c9

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lc/b/m/b/n$a;->a:Landroid/widget/TextView;

    const p1, 0x7f0804b1

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lc/b/m/b/n$a;->b:Landroid/widget/TextView;

    const p1, 0x7f080442

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lc/b/m/b/n$a;->c:Landroid/widget/TextView;

    const p1, 0x7f080452

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lc/b/m/b/n$a;->d:Landroid/widget/TextView;

    const p1, 0x7f08045f

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lc/b/m/b/n$a;->e:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;I)V
    .locals 1

    check-cast p1, Lc/b/m/d/d0;

    iget-object p2, p0, Lc/b/m/b/n$a;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lc/b/m/b/n$a;->f:Lc/b/m/b/n;

    .line 1
    iget-object v0, v0, Lc/b/m/b/n;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lc/b/m/b/n$a;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lc/b/m/d/d0;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lc/b/m/b/n$a;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lc/b/m/d/d0;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lc/b/m/b/n$a;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lc/b/m/d/d0;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lc/b/m/b/n$a;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lc/b/m/d/d0;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
