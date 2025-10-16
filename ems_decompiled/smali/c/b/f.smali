.class public Lc/b/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/emsportal/MainActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lc/b/f;->c:Lcom/emsportal/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lc/b/f;->c:Lcom/emsportal/MainActivity;

    .line 1
    iget-object p1, p1, Lcom/emsportal/MainActivity;->c:Lb/b/k/g;

    .line 2
    invoke-virtual {p1}, Lb/b/k/q;->dismiss()V

    return-void
.end method
