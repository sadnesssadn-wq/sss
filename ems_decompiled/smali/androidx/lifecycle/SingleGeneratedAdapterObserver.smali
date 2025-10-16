.class public Landroidx/lifecycle/SingleGeneratedAdapterObserver;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/o/h;


# instance fields
.field public final a:Lb/o/e;


# direct methods
.method public constructor <init>(Lb/o/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/SingleGeneratedAdapterObserver;->a:Lb/o/e;

    return-void
.end method


# virtual methods
.method public d(Lb/o/j;Lb/o/f$a;)V
    .locals 3

    iget-object v0, p0, Landroidx/lifecycle/SingleGeneratedAdapterObserver;->a:Lb/o/e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, p1, p2, v1, v2}, Lb/o/e;->a(Lb/o/j;Lb/o/f$a;ZLb/o/n;)V

    iget-object v0, p0, Landroidx/lifecycle/SingleGeneratedAdapterObserver;->a:Lb/o/e;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1, v2}, Lb/o/e;->a(Lb/o/j;Lb/o/f$a;ZLb/o/n;)V

    return-void
.end method
