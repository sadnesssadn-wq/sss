.class public Lcom/android/volley/VolleyError;
.super Ljava/lang/Exception;
.source ""


# instance fields
.field public final c:Lc/a/b/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/volley/VolleyError;->c:Lc/a/b/i;

    return-void
.end method

.method public constructor <init>(Lc/a/b/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput-object p1, p0, Lcom/android/volley/VolleyError;->c:Lc/a/b/i;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/volley/VolleyError;->c:Lc/a/b/i;

    return-void
.end method
