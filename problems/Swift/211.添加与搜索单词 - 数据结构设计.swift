/**
 * 211.添加与搜索单词 - 数据结构设计 [Medium]
 * Time Complexity: O(n), Space Complexity: O(n)
 * https://leetcode-cn.com/problems/design-add-and-search-words-data-structure/
 */

class WordDictionary {
  private var trie: Trie

  init() {
    trie = Trie()
  }

  func addWord(_ word: String) {
    trie.add(word)
  }

  func search(_ word: String) -> Bool {
    return trie.search(word)
  }
}

class TrieNode {
  var children: [Character: TrieNode]
  var isEnd: Bool

  init() {
    children = [Character: TrieNode]()
    isEnd = false
  }
}

class Trie {
  private var root: TrieNode

  init() {
    root = TrieNode()
  }

  func add(_ word: String) {
    var node = root

    for char in word {
      if node.children[char] == nil {
        node.children[char] = TrieNode()
      }

      node = node.children[char]!
    }

    node.isEnd = true
  }

  func search(_ word: String) -> Bool {
    return dfsSearch(word, 0, root)
  }

  private func dfsSearch(_ word: String, _ index: Int, _ node: TrieNode) -> Bool {
    guard index != word.count else {
      return node.isEnd
    }

    let char = Array(word)[index]

    if char != "." {
      guard let nextNode = node.children[char] else {
        return false
      }

      return dfsSearch(word, index + 1, nextNode)
    } else {
      for key in node.children.keys {
        if dfsSearch(word, index + 1, node.children[key]!) {
          return true
        }
      }

      return false
    }
  }
}

/**
 * Your WordDictionary object will be instantiated and called as such:
 * let obj = WordDictionary()
 * obj.addWord(word)
 * let ret_2: Bool = obj.search(word)
 */
