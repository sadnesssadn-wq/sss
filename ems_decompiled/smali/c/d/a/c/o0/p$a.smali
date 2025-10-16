.class public Lc/d/a/c/o0/p$a;
.super Lc/d/a/c/c0/k;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/c/o0/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lc/d/a/c/o0/p;


# direct methods
.method public constructor <init>(Lc/d/a/c/o0/p;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/c/o0/p$a;->c:Lc/d/a/c/o0/p;

    invoke-direct {p0}, Lc/d/a/c/c0/k;-><init>()V

    return-void
.end method


# virtual methods
.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p1, p0, Lc/d/a/c/o0/p$a;->c:Lc/d/a/c/o0/p;

    iget-object p2, p1, Lc/d/a/c/o0/m;->c:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-static {p1}, Lc/d/a/c/o0/p;->e(Lc/d/a/c/o0/p;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    return-void
.end method
