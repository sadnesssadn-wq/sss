.class public Lcom/android/volley/AuthFailureError;
.super Lcom/android/volley/VolleyError;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/volley/VolleyError;-><init>()V

    return-void
.end method

.method public constructor <init>(Lc/a/b/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/volley/VolleyError;-><init>(Lc/a/b/i;)V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
