.class public Lc/c/a/a/g$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/a/g;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lc/c/a/a/h/a;

.field public final synthetic d:Lc/c/a/a/g;


# direct methods
.method public constructor <init>(Lc/c/a/a/g;Lc/c/a/a/h/a;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/a/g$b;->d:Lc/c/a/a/g;

    iput-object p2, p0, Lc/c/a/a/g$b;->c:Lc/c/a/a/h/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lc/c/a/a/g$b;->d:Lc/c/a/a/g;

    .line 1
    iget-object v0, v0, Lc/c/a/a/g;->a:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 2
    iget-object v1, p0, Lc/c/a/a/g$b;->c:Lc/c/a/a/h/a;

    .line 3
    iget-object v0, v0, Lcom/github/barteksc/pdfviewer/PDFView;->t:Lc/c/a/a/j/a;

    .line 4
    iget v2, v1, Lc/c/a/a/h/a;->c:I

    .line 5
    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    .line 6
    iget-object v0, v0, Lc/c/a/a/j/a;->c:Lc/c/a/a/j/g;

    if-eqz v0, :cond_0

    invoke-interface {v0, v2, v3}, Lc/c/a/a/j/g;->a(ILjava/lang/Throwable;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 7
    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView;->Q:Ljava/lang/String;

    const-string v2, "Cannot open page "

    invoke-static {v2}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8
    iget v3, v1, Lc/c/a/a/h/a;->c:I

    .line 9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method
