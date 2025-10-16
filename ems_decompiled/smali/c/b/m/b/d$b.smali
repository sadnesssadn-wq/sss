.class public Lc/b/m/b/d$b;
.super Lcom/emsportal/base/BaseAdapter$BaseViewHolder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/m/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public final synthetic e:Lc/b/m/b/d;


# direct methods
.method public constructor <init>(Lc/b/m/b/d;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lc/b/m/b/d$b;->e:Lc/b/m/b/d;

    invoke-direct {p0, p1, p2}, Lcom/emsportal/base/BaseAdapter$BaseViewHolder;-><init>(Lcom/emsportal/base/BaseAdapter;Landroid/view/View;)V

    const p1, 0x7f080496

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lc/b/m/b/d$b;->a:Landroid/widget/TextView;

    const p1, 0x7f0804ea

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lc/b/m/b/d$b;->b:Landroid/widget/TextView;

    const p1, 0x7f0804ec

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lc/b/m/b/d$b;->c:Landroid/widget/TextView;

    const p1, 0x7f080461

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lc/b/m/b/d$b;->d:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;I)V
    .locals 1

    check-cast p1, Lc/b/m/d/o;

    iget-object p2, p0, Lc/b/m/b/d$b;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lc/b/m/d/o;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lc/b/m/b/d$b;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lc/b/m/d/o;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lc/b/m/b/d$b;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lc/b/m/d/o;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lc/b/m/b/d$b;->d:Landroid/widget/TextView;

    new-instance v0, Lc/b/m/b/d$b$a;

    invoke-direct {v0, p0, p1}, Lc/b/m/b/d$b$a;-><init>(Lc/b/m/b/d$b;Lc/b/m/d/o;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
