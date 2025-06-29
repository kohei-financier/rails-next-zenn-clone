// ライブラリのインポート
import type { NextPage } from 'next'
import SimpleButton from '@/components/simpleButton'

// 関数の定義
const HelloWorld: NextPage = () => {
  const handleOnClick = () => {
    console.log('Clicked from hello_world')
  }

  return (
    <>
      <h1>Title</h1>
      <p>content</p>
      <SimpleButton text={'From HelloWorld'} onClick={handleOnClick} />
    </>
  )
}
// 関数のエクスポート
export default HelloWorld
