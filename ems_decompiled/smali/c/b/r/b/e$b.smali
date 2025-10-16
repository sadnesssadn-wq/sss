.class public Lc/b/r/b/e$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/r/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Lcom/google/android/material/textview/MaterialTextView;

.field public b:Lcom/google/android/material/textview/MaterialTextView;

.field public c:Landroid/view/View;

.field public final synthetic d:Lc/b/r/b/e;


# direct methods
.method public constructor <init>(Lc/b/r/b/e;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lc/b/r/b/e$b;->d:Lc/b/r/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x7f0804d1

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textview/MaterialTextView;

    iput-object p1, p0, Lc/b/r/b/e$b;->a:Lcom/google/android/material/textview/MaterialTextView;

    const p1, 0x7f08046d

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textview/MaterialTextView;

    iput-object p1, p0, Lc/b/r/b/e$b;->b:Lcom/google/android/material/textview/MaterialTextView;

    const p1, 0x7f0804ff

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lc/b/r/b/e$b;->c:Landroid/view/View;

    return-void
.end method
