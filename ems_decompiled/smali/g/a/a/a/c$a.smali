.class public Lg/a/a/a/c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/a/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lg/a/a/a/c;


# direct methods
.method public constructor <init>(Lg/a/a/a/c;)V
    .locals 0

    iput-object p1, p0, Lg/a/a/a/c$a;->c:Lg/a/a/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lg/a/a/a/c$a;->c:Lg/a/a/a/c;

    .line 1
    iget-object v1, v0, Lg/a/a/a/c;->c:Lg/a/a/a/d;

    if-eqz v1, :cond_0

    .line 2
    iget-boolean v1, v0, Lg/a/a/a/c;->e:Z

    if-eqz v1, :cond_0

    .line 3
    iget-boolean v1, v0, Lg/a/a/a/c;->f:Z

    if-eqz v1, :cond_0

    .line 4
    iget-boolean v1, v0, Lg/a/a/a/c;->g:Z

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0}, Lg/a/a/a/c;->a()V

    :cond_0
    return-void
.end method
