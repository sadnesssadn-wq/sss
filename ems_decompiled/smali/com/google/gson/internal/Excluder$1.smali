.class public Lcom/google/gson/internal/Excluder$1;
.super Lc/d/c/t;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/internal/Excluder;->a(Lcom/google/gson/Gson;Lc/d/c/x/a;)Lc/d/c/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/d/c/t<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:Lc/d/c/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/c/t<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Lcom/google/gson/Gson;

.field public final synthetic e:Lc/d/c/x/a;

.field public final synthetic f:Lcom/google/gson/internal/Excluder;


# direct methods
.method public constructor <init>(Lcom/google/gson/internal/Excluder;ZZLcom/google/gson/Gson;Lc/d/c/x/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/gson/internal/Excluder$1;->f:Lcom/google/gson/internal/Excluder;

    iput-boolean p2, p0, Lcom/google/gson/internal/Excluder$1;->b:Z

    iput-boolean p3, p0, Lcom/google/gson/internal/Excluder$1;->c:Z

    iput-object p4, p0, Lcom/google/gson/internal/Excluder$1;->d:Lcom/google/gson/Gson;

    iput-object p5, p0, Lcom/google/gson/internal/Excluder$1;->e:Lc/d/c/x/a;

    invoke-direct {p0}, Lc/d/c/t;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/d/c/y/a;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/c/y/a;",
            ")TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/gson/internal/Excluder$1;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lc/d/c/y/a;->J()V

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/google/gson/internal/Excluder$1;->a:Lc/d/c/t;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/gson/internal/Excluder$1;->d:Lcom/google/gson/Gson;

    iget-object v1, p0, Lcom/google/gson/internal/Excluder$1;->f:Lcom/google/gson/internal/Excluder;

    iget-object v2, p0, Lcom/google/gson/internal/Excluder$1;->e:Lc/d/c/x/a;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->e(Lc/d/c/u;Lc/d/c/x/a;)Lc/d/c/t;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/internal/Excluder$1;->a:Lc/d/c/t;

    .line 2
    :goto_0
    invoke-virtual {v0, p1}, Lc/d/c/t;->a(Lc/d/c/y/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Lc/d/c/y/c;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/c/y/c;",
            "TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/gson/internal/Excluder$1;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lc/d/c/y/c;->o()Lc/d/c/y/c;

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/google/gson/internal/Excluder$1;->a:Lc/d/c/t;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/gson/internal/Excluder$1;->d:Lcom/google/gson/Gson;

    iget-object v1, p0, Lcom/google/gson/internal/Excluder$1;->f:Lcom/google/gson/internal/Excluder;

    iget-object v2, p0, Lcom/google/gson/internal/Excluder$1;->e:Lc/d/c/x/a;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->e(Lc/d/c/u;Lc/d/c/x/a;)Lc/d/c/t;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/internal/Excluder$1;->a:Lc/d/c/t;

    .line 2
    :goto_0
    invoke-virtual {v0, p1, p2}, Lc/d/c/t;->b(Lc/d/c/y/c;Ljava/lang/Object;)V

    return-void
.end method
