.class public Lc/b/t/b$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/a/b/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/t/b;->f(ILjava/lang/String;Ljava/util/HashMap;Lorg/json/JSONObject;Lorg/json/JSONArray;ZZLc/b/t/b$d;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lc/b/t/b$d;

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lc/b/t/b;


# direct methods
.method public constructor <init>(Lc/b/t/b;ZLc/b/t/b$d;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc/b/t/b$b;->e:Lc/b/t/b;

    iput-boolean p2, p0, Lc/b/t/b$b;->a:Z

    iput-object p3, p0, Lc/b/t/b$b;->b:Lc/b/t/b$d;

    iput-boolean p4, p0, Lc/b/t/b$b;->c:Z

    iput-object p5, p0, Lc/b/t/b$b;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2

    iget-object v0, p0, Lc/b/t/b$b;->e:Lc/b/t/b;

    iget-boolean v1, p0, Lc/b/t/b$b;->a:Z

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lc/b/t/b;->a:Lc/b/t/b$e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lc/b/t/b$e;->j()V

    .line 2
    :cond_0
    sget-object v0, Lc/b/t/b;->b:Ljava/lang/String;

    const-string v0, "volley error: "

    invoke-static {v0}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lc/b/t/b$b;->b:Lc/b/t/b$d;

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/volley/TimeoutError;

    if-ne v0, v1, :cond_1

    const-string p1, "Request timeout"

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/volley/AuthFailureError;

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, "No internet permission ?"

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    iget-object p1, p1, Lcom/android/volley/VolleyError;->c:Lc/a/b/i;

    move-object p1, v0

    :goto_0
    iget-object v0, p0, Lc/b/t/b$b;->b:Lc/b/t/b$d;

    instance-of v1, v0, Lc/b/t/b$d;

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lc/b/t/b$b;->c:Z

    if-nez v1, :cond_7

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    const-string p1, ""

    :goto_1
    invoke-interface {v0, p1}, Lc/b/t/b$d;->b(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lc/b/t/b$b;->e:Lc/b/t/b;

    iget-object v1, p0, Lc/b/t/b$b;->d:Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v0, v1}, Lc/b/t/b;->c(Lc/b/t/b$d;Ljava/lang/String;)V

    :cond_8
    :goto_2
    return-void
.end method
