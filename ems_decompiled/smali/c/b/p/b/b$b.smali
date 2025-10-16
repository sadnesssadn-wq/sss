.class public Lc/b/p/b/b$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/p/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Lcom/google/android/material/textview/MaterialTextView;

.field public b:Lcom/google/android/material/textview/MaterialTextView;

.field public c:Landroid/view/View;

.field public final synthetic d:Lc/b/p/b/b;


# direct methods
.method public constructor <init>(Lc/b/p/b/b;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lc/b/p/b/b$b;->d:Lc/b/p/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x7f080490

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textview/MaterialTextView;

    iput-object p1, p0, Lc/b/p/b/b$b;->a:Lcom/google/android/material/textview/MaterialTextView;

    const p1, 0x7f0804a7

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textview/MaterialTextView;

    iput-object p1, p0, Lc/b/p/b/b$b;->b:Lcom/google/android/material/textview/MaterialTextView;

    const p1, 0x7f0804ff

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lc/b/p/b/b$b;->c:Landroid/view/View;

    return-void
.end method
