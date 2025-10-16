.class public Lb/i/j/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lb/i/j/m;

.field public final synthetic d:I


# direct methods
.method public constructor <init>(Lb/i/j/c;Lb/i/j/m;I)V
    .locals 0

    iput-object p2, p0, Lb/i/j/b;->c:Lb/i/j/m;

    iput p3, p0, Lb/i/j/b;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lb/i/j/b;->c:Lb/i/j/m;

    iget v1, p0, Lb/i/j/b;->d:I

    check-cast v0, Lb/i/g/d$a;

    .line 1
    iget-object v0, v0, Lb/i/g/d$a;->a:Lb/i/f/c/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lb/i/f/c/g;->d(I)V

    :cond_0
    return-void
.end method
