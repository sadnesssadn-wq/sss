.class public Lc/b/q/b/f$b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/q/b/f$b;-><init>(Lc/b/q/b/f;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lc/b/q/b/f$b;


# direct methods
.method public constructor <init>(Lc/b/q/b/f$b;Lc/b/q/b/f;)V
    .locals 0

    iput-object p1, p0, Lc/b/q/b/f$b$a;->c:Lc/b/q/b/f$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lc/b/q/b/f$b$a;->c:Lc/b/q/b/f$b;

    iget-object p1, p1, Lc/b/q/b/f$b;->k:Lc/b/q/b/f;

    .line 1
    iget-object p1, p1, Lcom/emsportal/base/BaseAdapter;->context:Landroid/content/Context;

    .line 2
    new-instance v0, Lc/b/q/b/f$b$a$a;

    invoke-direct {v0, p0}, Lc/b/q/b/f$b$a$a;-><init>(Lc/b/q/b/f$b$a;)V

    invoke-static {p1, v0}, Lb/u/a;->k0(Landroid/content/Context;Lc/b/w/l;)V

    return-void
.end method
