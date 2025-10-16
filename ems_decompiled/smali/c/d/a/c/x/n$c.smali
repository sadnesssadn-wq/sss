.class public Lc/d/a/c/x/n$c;
.super Lc/d/a/c/x/v;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/d/a/c/x/n;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/d/a/c/x/v<",
        "TS;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc/d/a/c/x/n;


# direct methods
.method public constructor <init>(Lc/d/a/c/x/n;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/c/x/n$c;->a:Lc/d/a/c/x/n;

    invoke-direct {p0}, Lc/d/a/c/x/v;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    iget-object p1, p0, Lc/d/a/c/x/n$c;->a:Lc/d/a/c/x/n;

    .line 1
    sget v0, Lc/d/a/c/x/n;->t:I

    invoke-virtual {p1}, Lc/d/a/c/x/n;->l()V

    .line 2
    iget-object p1, p0, Lc/d/a/c/x/n$c;->a:Lc/d/a/c/x/n;

    .line 3
    iget-object v0, p1, Lc/d/a/c/x/n;->s:Landroid/widget/Button;

    .line 4
    iget-object p1, p1, Lc/d/a/c/x/n;->h:Lc/d/a/c/x/d;

    .line 5
    invoke-interface {p1}, Lc/d/a/c/x/d;->k()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
