.class public final Lc/d/a/b/j/p;
.super Lc/d/a/b/i/j/g;
.source ""


# instance fields
.field public final synthetic c:Lc/d/a/b/p/m;


# direct methods
.method public constructor <init>(Lc/d/a/b/p/m;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/b/j/p;->c:Lc/d/a/b/p/m;

    invoke-direct {p0}, Lc/d/a/b/i/j/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final D(Lc/d/a/b/i/j/d;)V
    .locals 4

    .line 1
    iget-object p1, p1, Lc/d/a/b/i/j/d;->c:Lcom/google/android/gms/common/api/Status;

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lc/d/a/b/j/p;->c:Lc/d/a/b/p/m;

    new-instance v0, Lc/d/a/b/e/m/b;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x8

    const-string v3, "Got null status from location service"

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lc/d/a/b/e/m/b;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {p1, v0}, Lc/d/a/b/p/m;->a(Ljava/lang/Exception;)Z

    return-void

    .line 3
    :cond_0
    iget v0, p1, Lcom/google/android/gms/common/api/Status;->d:I

    if-nez v0, :cond_1

    .line 4
    iget-object p1, p0, Lc/d/a/b/j/p;->c:Lc/d/a/b/p/m;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 5
    iget-object p1, p1, Lc/d/a/b/p/m;->a:Lc/d/a/b/p/j0;

    invoke-virtual {p1, v0}, Lc/d/a/b/p/j0;->t(Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lc/d/a/b/j/p;->c:Lc/d/a/b/p/m;

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->R(Lcom/google/android/gms/common/api/Status;)Lc/d/a/b/e/m/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lc/d/a/b/p/m;->a(Ljava/lang/Exception;)Z

    return-void
.end method
