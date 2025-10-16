.class public Lc/b/m/b/r$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/m/b/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>(Lc/b/m/b/r;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x7f08044d

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lc/b/m/b/r$a;->a:Landroid/widget/TextView;

    const p1, 0x7f080200

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lc/b/m/b/r$a;->b:Landroid/widget/RadioButton;

    return-void
.end method

.method public static a(Lc/b/m/b/r$a;Lc/b/m/d/h;)V
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lc/b/m/d/h;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1010"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lc/b/m/b/r$a;->b(Z)V

    iget-object v0, p0, Lc/b/m/b/r$a;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lc/b/m/d/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lc/b/m/b/r$a;->b:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Lc/b/m/d/h;->c()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public final b(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lc/b/m/b/r$a;->b:Landroid/widget/RadioButton;

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lc/b/m/b/r$a;->b:Landroid/widget/RadioButton;

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setVisibility(I)V

    return-void
.end method
