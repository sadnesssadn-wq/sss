.class public Lb/m/d/l$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/m/d/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lb/m/d/l;


# direct methods
.method public constructor <init>(Lb/m/d/l;)V
    .locals 0

    iput-object p1, p0, Lb/m/d/l$a;->c:Lb/m/d/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation

    iget-object v0, p0, Lb/m/d/l$a;->c:Lb/m/d/l;

    invoke-static {v0}, Lb/m/d/l;->access$100(Lb/m/d/l;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v0

    iget-object v1, p0, Lb/m/d/l$a;->c:Lb/m/d/l;

    invoke-static {v1}, Lb/m/d/l;->access$000(Lb/m/d/l;)Landroid/app/Dialog;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method
