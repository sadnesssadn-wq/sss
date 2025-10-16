.class public Lb/r/d/d$a$a;
.super Lb/r/d/h$b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/r/d/d$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/r/d/d$a;


# direct methods
.method public constructor <init>(Lb/r/d/d$a;)V
    .locals 0

    iput-object p1, p0, Lb/r/d/d$a$a;->a:Lb/r/d/d$a;

    invoke-direct {p0}, Lb/r/d/h$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)Z
    .locals 1

    iget-object v0, p0, Lb/r/d/d$a$a;->a:Lb/r/d/d$a;

    iget-object v0, v0, Lb/r/d/d$a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lb/r/d/d$a$a;->a:Lb/r/d/d$a;

    iget-object v0, v0, Lb/r/d/d$a;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lb/r/d/d$a$a;->a:Lb/r/d/d$a;

    iget-object v0, v0, Lb/r/d/d$a;->g:Lb/r/d/d;

    iget-object v0, v0, Lb/r/d/d;->b:Lb/r/d/c;

    .line 1
    iget-object v0, v0, Lb/r/d/c;->b:Lb/r/d/h$d;

    .line 2
    invoke-virtual {v0, p1, p2}, Lb/r/d/h$d;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public b(II)Z
    .locals 1

    iget-object v0, p0, Lb/r/d/d$a$a;->a:Lb/r/d/d$a;

    iget-object v0, v0, Lb/r/d/d$a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lb/r/d/d$a$a;->a:Lb/r/d/d$a;

    iget-object v0, v0, Lb/r/d/d$a;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lb/r/d/d$a$a;->a:Lb/r/d/d$a;

    iget-object v0, v0, Lb/r/d/d$a;->g:Lb/r/d/d;

    iget-object v0, v0, Lb/r/d/d;->b:Lb/r/d/c;

    .line 1
    iget-object v0, v0, Lb/r/d/c;->b:Lb/r/d/h$d;

    .line 2
    invoke-virtual {v0, p1, p2}, Lb/r/d/h$d;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c(II)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lb/r/d/d$a$a;->a:Lb/r/d/d$a;

    iget-object v0, v0, Lb/r/d/d$a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lb/r/d/d$a$a;->a:Lb/r/d/d$a;

    iget-object v0, v0, Lb/r/d/d$a;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lb/r/d/d$a$a;->a:Lb/r/d/d$a;

    iget-object v0, v0, Lb/r/d/d$a;->g:Lb/r/d/d;

    iget-object v0, v0, Lb/r/d/d;->b:Lb/r/d/c;

    .line 1
    iget-object v0, v0, Lb/r/d/c;->b:Lb/r/d/h$d;

    .line 2
    invoke-virtual {v0, p1, p2}, Lb/r/d/h$d;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method
