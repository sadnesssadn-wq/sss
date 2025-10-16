.class public Lc/b/r/b/r$a;
.super Lcom/emsportal/base/BaseAdapter$BaseViewHolder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/r/b/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lc/b/r/b/r;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/emsportal/base/BaseAdapter$BaseViewHolder;-><init>(Lcom/emsportal/base/BaseAdapter;Landroid/view/View;)V

    const p1, 0x7f0804c9

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lc/b/r/b/r$a;->a:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;I)V
    .locals 1

    check-cast p1, Lc/b/r/c/n;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1
    iget-object v0, p1, Lc/b/r/c/n;->e:Ljava/lang/String;

    .line 2
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object p1, p1, Lc/b/r/c/n;->d:Ljava/lang/String;

    const-string v0, ")"

    .line 4
    invoke-static {p2, p1, v0}, Lc/a/a/a/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lc/b/r/b/r$a;->a:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
