.class public Lb/i/e/d$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/i/e/d;->b(Landroid/app/Activity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lb/i/e/d$c;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lb/i/e/d$c;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lb/i/e/d$a;->c:Lb/i/e/d$c;

    iput-object p2, p0, Lb/i/e/d$a;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lb/i/e/d$a;->c:Lb/i/e/d$c;

    iget-object v1, p0, Lb/i/e/d$a;->d:Ljava/lang/Object;

    iput-object v1, v0, Lb/i/e/d$c;->c:Ljava/lang/Object;

    return-void
.end method
