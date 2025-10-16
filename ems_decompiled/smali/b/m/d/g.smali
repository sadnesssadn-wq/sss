.class public Lb/m/d/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/i/i/a$a;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Landroid/view/ViewGroup;

.field public final synthetic c:Lb/m/d/c$b;


# direct methods
.method public constructor <init>(Lb/m/d/c;Landroid/view/View;Landroid/view/ViewGroup;Lb/m/d/c$b;)V
    .locals 0

    iput-object p2, p0, Lb/m/d/g;->a:Landroid/view/View;

    iput-object p3, p0, Lb/m/d/g;->b:Landroid/view/ViewGroup;

    iput-object p4, p0, Lb/m/d/g;->c:Lb/m/d/c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lb/m/d/g;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lb/m/d/g;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Lb/m/d/g;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-object v0, p0, Lb/m/d/g;->c:Lb/m/d/c$b;

    invoke-virtual {v0}, Lb/m/d/c$c;->a()V

    return-void
.end method
