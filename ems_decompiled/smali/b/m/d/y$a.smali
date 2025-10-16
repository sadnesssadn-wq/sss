.class public Lb/m/d/y$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/a/e/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/m/d/y;->b(Lb/m/d/v;Lb/m/d/s;Landroidx/fragment/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/a/e/b<",
        "Lb/a/e/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lb/m/d/y;


# direct methods
.method public constructor <init>(Lb/m/d/y;)V
    .locals 0

    iput-object p1, p0, Lb/m/d/y$a;->a:Lb/m/d/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lb/a/e/a;

    .line 1
    iget-object v0, p0, Lb/m/d/y$a;->a:Lb/m/d/y;

    iget-object v0, v0, Lb/m/d/y;->A:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/m/d/y$k;

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No IntentSenders were started for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lb/m/d/y$k;->c:Ljava/lang/String;

    iget v0, v0, Lb/m/d/y$k;->d:I

    iget-object v2, p0, Lb/m/d/y$a;->a:Lb/m/d/y;

    .line 2
    iget-object v2, v2, Lb/m/d/y;->c:Lb/m/d/h0;

    .line 3
    invoke-virtual {v2, v1}, Lb/m/d/h0;->e(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_1

    const-string p1, "Intent Sender result delivered for unknown Fragment "

    invoke-static {p1, v1}, Lc/a/a/a/a;->v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FragmentManager"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4
    :cond_1
    iget v1, p1, Lb/a/e/a;->c:I

    .line 5
    iget-object p1, p1, Lb/a/e/a;->d:Landroid/content/Intent;

    .line 6
    invoke-virtual {v2, v0, v1, p1}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    :goto_1
    return-void
.end method
