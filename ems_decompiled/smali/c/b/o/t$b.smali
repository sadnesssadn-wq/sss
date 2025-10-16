.class public Lc/b/o/t$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/o/t;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lc/b/o/t;


# direct methods
.method public constructor <init>(Lc/b/o/t;)V
    .locals 0

    iput-object p1, p0, Lc/b/o/t$b;->c:Lc/b/o/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 9

    const/4 p1, 0x3

    if-ne p2, p1, :cond_1

    invoke-static {}, Lb/u/a;->M()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lc/b/o/t$b;->c:Lc/b/o/t;

    .line 1
    iget-object p1, p1, Lc/b/o/t;->j:Landroid/widget/EditText;

    .line 2
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lc/b/o/t$b;->c:Lc/b/o/t;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lb/u/a;->A()Ljava/lang/String;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    new-instance v8, Lc/b/o/v;

    invoke-direct {v8, p1}, Lc/b/o/v;-><init>(Lc/b/o/t;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v8}, Lc/b/s/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLc/b/t/b$d;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lc/b/o/t$b;->c:Lc/b/o/t;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    const p2, 0x7f100263

    invoke-static {p1, p2}, Lb/u/a;->n0(Landroid/content/Context;I)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
