.class public final synthetic Lc/b/l/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/a/e/b;


# instance fields
.field public final synthetic a:Lc/b/l/e0;


# direct methods
.method public synthetic constructor <init>(Lc/b/l/e0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/b/l/a;->a:Lc/b/l/e0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lc/b/l/a;->a:Lc/b/l/e0;

    check-cast p1, Lb/a/e/a;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v1, p1, Lb/a/e/a;->c:I

    const/16 v2, 0x144

    if-ne v1, v2, :cond_0

    .line 3
    iget-object p1, p1, Lb/a/e/a;->d:Landroid/content/Intent;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "country"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lc/b/r/c/a;

    .line 5
    iget-object v1, p1, Lc/b/r/c/a;->d:Ljava/lang/String;

    .line 6
    iget-object v2, v0, Lc/b/l/e0;->s:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, p1, Lc/b/r/c/a;->e:Ljava/lang/String;

    .line 8
    iput-object p1, v0, Lc/b/l/e0;->B:Ljava/lang/String;

    :cond_0
    return-void
.end method
